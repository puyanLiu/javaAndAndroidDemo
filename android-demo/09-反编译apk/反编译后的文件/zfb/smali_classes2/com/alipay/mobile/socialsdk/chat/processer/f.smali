.class final Lcom/alipay/mobile/socialsdk/chat/processer/f;
.super Ljava/lang/Object;
.source "ChatMessageProcesser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->a:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 140
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 141
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 142
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 144
    iget-wide v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 145
    iget v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    iput v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 146
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizType:Ljava/lang/String;

    .line 147
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 148
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizIcon:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizIcon:Ljava/lang/String;

    .line 149
    sget-object v4, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 150
    iget-wide v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 151
    iget-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 152
    iput-boolean v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    .line 153
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 154
    iput p2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 155
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/f;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    .line 156
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCMsgId:Ljava/lang/String;

    .line 157
    iput-boolean v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    .line 158
    iput v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->memoParseType:I

    .line 159
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->bizRemind:Ljava/lang/String;

    .line 160
    const-string/jumbo v4, "12"

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v4, :cond_2

    :goto_0
    iput-boolean v1, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->voiceNotReadState:Z

    .line 167
    :cond_0
    :goto_1
    instance-of v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 168
    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 169
    iget v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    const-string/jumbo v2, "80"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->senderId:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    .line 173
    :cond_1
    return-object v3

    :cond_2
    move v1, v2

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    const-string/jumbo v2, "11"

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    iput v1, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->memoParseType:I

    goto :goto_1

    .line 164
    :cond_4
    const-string/jumbo v1, "17"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v1, :cond_0

    .line 165
    const/4 v1, 0x2

    iput v1, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->memoParseType:I

    goto :goto_1
.end method
