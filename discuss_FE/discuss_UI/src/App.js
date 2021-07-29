import React, { Component } from 'react';

import './App.css';

import 'bootstrap/dist/css/bootstrap.min.css';
import { Container, Card, Button, Navbar, Form, ListGroup } from 'react-bootstrap'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      question: '',
      name: '',
      comments: [],
      postComment: ''
    }
  }


  componentDidMount() {
    var res = new Date();
    var res1 = res.toLocaleString().replace(/[/]/g, "-");
    var res2 = res1.replace(/[,]/g, "");
    var res3 = res2.slice(6, 10) + '-' + res2.slice(0, 2)+ '-' + res2.slice(3, 5)  +' '+ res.toString().slice(16,25);
    this.getQuestion();
    this.initialComments(res3);
    this.getName();
    setInterval(() => {this.getComments()},3000)
  }

  getName() {
    this.setState({
      name: localStorage.getItem('name')
    })
  }

  handleName = (e) => {
    this.setState({
      name: e.target.value
    })
    localStorage.setItem('name', e.target.value)
  }

  handleComment = (e) => {
    this.setState({
      comment: e.target.value
    })
  }

  getQuestion() {
    fetch('/getQuestion/' + this.props.match.params.id).then(resp =>
      resp.json()
    ).then(data => {
      if (data.length) {
        this.setState({
          question: data[0][0].question
        })
      }
    })
  }

  initialComments(TimeStamp) {
    console.log(this.state.comments)
    if(TimeStamp==='old'){
      if(this.state.comments.length !==0){
        TimeStamp = this.getFormattedTimeStamp(this.state.comments[0].timestamp)
      fetch('/initialComments', {
        method: 'post',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          "timestamp": TimeStamp,
          "question_id": this.props.match.params.id
        })
      }).then(resp => resp.json()).then(data => {
        this.setState({
          comments: [...data[0].reverse(),...this.state.comments]
        })
      })
      }
    }else{
      fetch('/initialComments', {
        method: 'post',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          "timestamp": TimeStamp,
          "question_id": this.props.match.params.id
        })
      }).then(resp => resp.json()).then(data => {
        this.setState({
          comments: data[0].reverse()
        })
      })
    }
  }

  getFormattedTimeStamp(TimeStamp){
    var res = new Date(TimeStamp)
    var res1 = res.toLocaleString().replace(/[/]/g, "-")
    var res2 = res1.replace(/[,]/g, "")
    var res3 = res2.slice(6, 10) + '-' + res2.slice(0, 2)+ '-' + res2.slice(3, 5)  +' '+ res.toString().slice(16,25);
    return res3
  }

  getComments=()=>{
    console.log(this.state.comments);
    
    if(this.state.comments.length !== 0){
    var result = this.getFormattedTimeStamp(this.state.comments ? this.state.comments.slice(-1).pop().timestamp: null)
    fetch('/getComments', {
      method: 'post',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        "timestamp": result,
        "question_id": this.props.match.params.id
      })
    }).then(resp => resp.json()).then(data => {
      this.setState({
        comments: [...this.state.comments, ...data[0]]
      })
    })
    }
  }


  createComment = () => {
    fetch('createComment', {
      method: 'post',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        "comment": this.state.comment,
        "question_id": this.props.match.params.id,
        "commentName": this.state.name
      })
    }).then(resp =>
      resp.json()
    ).then(
    this.getComments()
    )
  }

  render() {
    const items = this.state.comments.map((item, key) =>
      <ListGroup.Item key={item.commentId}>{item.commentName} : {item.comment} </ListGroup.Item>
    );
    return (
      <Container>
        <Navbar>
          <Navbar.Brand href="#home">DISK</Navbar.Brand>
          <Navbar.Toggle />
          <Navbar.Collapse className="justify-content-end">
          </Navbar.Collapse>
        </Navbar>
        <Card >
          <Card.Body>
            <Card.Title>Question</Card.Title>
            <Card.Text>
              
              {this.state.question}
              </Card.Text>
          </Card.Body>
        </Card>


        <Card >
          <Card.Body>
            <Card.Title>Discussion</Card.Title>
            <Button variant="light" onClick={()=>{this.initialComments('old')}}>Load Previous</Button>
            <ListGroup variant="flush">
              {items}
            </ListGroup>
          </Card.Body>
        </Card>

        <Card>
          <Card.Body>
            <Form>
              <Form.Group controlId="formBasicName">
                <Form.Label>Name</Form.Label>
                <Form.Control size="sm" type="text" value={this.state.name} onChange={this.handleName} placeholder="YourName" />
              </Form.Group>
              <Form.Group controlId="formBasicComment">
                <Form.Label>Add your comment below</Form.Label>
                <Form.Control value={this.state.comment} onChange={this.handleComment} as="textarea" rows="3" />
                <Form.Text className="text-muted">
                  We'll never share your email with anyone else.
                   </Form.Text>
              </Form.Group>
              <Button variant="primary" onClick={this.createComment}>
                Submit
              </Button>
              <Button variant="light" onClick={()=>{this.getComments()}}>Refresh</Button>
            </Form>



          </Card.Body>
        </Card>
      </Container>
    );
  }

}

export default App;
