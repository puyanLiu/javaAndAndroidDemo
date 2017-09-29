.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;
.source "TextRequest.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iput-object p2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "811"

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const-string/jumbo v1, "\u4f60\u6536\u5230\u4e86\u4e00\u6761\u6084\u6084\u8bdd"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 24
    :cond_0
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->hintUsers:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/TextRequest;->setRequestId(Ljava/lang/String;)V

    .line 28
    return-void
.end method
