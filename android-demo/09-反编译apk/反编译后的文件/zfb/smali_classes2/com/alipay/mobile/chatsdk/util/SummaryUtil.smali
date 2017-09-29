.class public Lcom/alipay/mobile/chatsdk/util/SummaryUtil;
.super Ljava/lang/Object;
.source "SummaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 1

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const/4 p0, 0x0

    .line 32
    :cond_0
    :goto_0
    return-object p0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isTextMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isImgMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget v0, Lcom/alipay/android/phone/publicplatform/synccenter/R$string;->SummaryUtil_27:I

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    goto :goto_0
.end method
