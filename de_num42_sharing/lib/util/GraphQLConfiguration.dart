import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";

class GraphQLConfiguration {
  static String link = "";
  static HttpLink httpLink = HttpLink(
    "http://192.168.188.69:4000/graphql/graphiql",
  );

  void addToken(String token) {
    GraphQLConfiguration.link = "http://192.168.188.69:4000/graphql/graphiql?authorization=$token&";
    overwriteClient();
  }

  static void setToken(String token) {
    GraphQLConfiguration.link = "http://192.168.188.69:4000/graphql/graphiql?authorization=$token&";
  }

  static void removeToken() {
    GraphQLConfiguration.link = "";
  }

  void deleteToken() {
    GraphQLConfiguration.link = "";
    overwriteClient();
  }

  void overwriteClient(){
    client.value=GraphQLClient(
      link: getLink(),
      cache:  GraphQLCache(store: InMemoryStore()),
    );
  }

  static Link getLink() {
    print("get Link");
    return GraphQLConfiguration.link.isNotEmpty ?
    HttpLink(GraphQLConfiguration.link)
        : GraphQLConfiguration.httpLink;
  }

  var client = ValueNotifier(
    GraphQLClient(
      link: getLink(),
      cache:  GraphQLCache(store: InMemoryStore()),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache:  GraphQLCache(store: InMemoryStore()),
      link: getLink(),
    );
  }
}