import * as WebBrowser from 'expo-web-browser';
import React from 'react';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Keyboard,
  Share
} from 'react-native';
import {
  Container,
  Header,
  Content,
  Form,
  Item,
  DeckSwiper,
  Input,
  Label,
  Button,
  Textarea,
  Left,
  Right,
  Icon,
  Text,
  Body,
  Subtitle,
  Title,
  Card,
  CardItem,
  Thumbnail,
  List,
  ListItem,
  H1
} from 'native-base';

import { MonoText } from '../components/StyledText';

export default class HomeScreen extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      question:'',
      qid:''
    }
  }

  onShare = async () => {
    console.log(this.state.qid);
    try {
      const result = await Share.share({
        message: 'http://discuss-dev.p4edmegjmh.ap-south-1.elasticbeanstalk.com/app/'+this.state.qid,
      });

      if (result.action === Share.sharedAction) {
        if (result.activityType) {
          // shared with activity type of result.activityType
          console.log(result.activityType);
          
        } else {
          console.log('else case')
        }
      } else if (result.action === Share.dismissedAction) {
        console.log('dismissed ')
      } 
    } catch (error) {
      alert(error.message);
    }
  };

  postQuestion=()=>{
    try{
      fetch('http://discuss-dev.p4edmegjmh.ap-south-1.elasticbeanstalk.com/createQuestion',{
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          question: this.state.question,
        }),
      }).then(resp=>resp.json()).then(data=>{this.setState({qid:data[1][0].qid});this.onShare()}
      )
    } catch(err){
      console.log(err);
    } finally{
      this.setState({
        question:'' 
      })
    }
  }   

  handlePress=()=>{
    if(this.state.question){
    this.postQuestion();
    }else{
      alert('Type in a question')
    }
  }

  changeQuestion=(e)=>{
    this.setState({
      question:e
    })
  }
  render(){
    return (
      <Container>
        <Header style={styles.Header}>
            <Body>
      <Title>Discuss</Title>
              <Subtitle>App for discussions</Subtitle>
            </Body>
            <Right>
              <Button transparent>
                <Icon name='search' />
              </Button>
            </Right>
          </Header>
          <Content>
          <Card>
            <CardItem>
              <Body>
              <H1>{this.state.question}</H1>
              </Body>
            </CardItem>
          </Card>
          

          <Form>
            <Textarea rowSpan={2} value={this.state.question} onChangeText={this.changeQuestion} bordered placeholder="Type your question for discussion" />
            <Button onPress={this.handlePress} primary><Text> submit </Text></Button>
          </Form>

          </Content>
      </Container>
    );
  }
}

HomeScreen.navigationOptions = {
  header: null,
};


const styles = StyleSheet.create({
  Header: {
    marginTop: 31
  },
  HeaderText: {
    color: 'white'
  }
});
