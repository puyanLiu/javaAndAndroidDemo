.class public Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;
.super Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;
.source "CommonRequest.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/request/BaseChatRequest;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iput-object p2, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->d:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->hintUsers:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/request/CommonRequest;->setRequestId(Ljava/lang/String;)V

    .line 26
    return-void
.end method
