.class public Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;
.super Ljava/lang/Object;
.source "SyncChatMsgModel.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/SyncChatMsgDatabaseDaoImpl;
.end annotation


# instance fields
.field public action:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizMemo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizRemind:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public clientMsgId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public createTime:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createTimeMills:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public egg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public fromLoginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public fromUId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public hintMemo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public incrementalId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public msgId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public msgIndex:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public preDownId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public preDownType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public read:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public recent:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public resources:[B

.field public templateCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public templateData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toLoginId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public toUId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(JLcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    .line 85
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    .line 86
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromLoginId:Ljava/lang/String;

    .line 87
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    .line 88
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toLoginId:Ljava/lang/String;

    .line 89
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    .line 90
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgId:J

    .line 91
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    .line 92
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    .line 93
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    .line 94
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->hintMemo:Ljava/lang/String;

    .line 95
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizMemo:Ljava/lang/String;

    .line 96
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizType:Ljava/lang/String;

    .line 97
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->egg:Ljava/lang/String;

    .line 98
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->link:Ljava/lang/String;

    .line 99
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTimeMills:J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTime:Ljava/util/Date;

    .line 101
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->recent:Ljava/lang/String;

    .line 102
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->read:Ljava/lang/String;

    .line 103
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->action:I

    .line 104
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizRemind:Ljava/lang/String;

    .line 105
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgIndex:Ljava/lang/String;

    .line 106
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->resources:[B

    .line 109
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p3, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceWithRevertMsg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "8003"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"m\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizMemo:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->recent:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string/jumbo v1, "incrementalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "fromUId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, "fromLoginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromLoginId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "toUId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "toLoginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toLoginId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, "clientMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "templateCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "templateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "hintMemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->hintMemo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, "bizMemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizMemo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "bizType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "egg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->egg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, "createTimeMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTimeMills:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v1, "recent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->recent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, "read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->read:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, "bizRemind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizRemind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "msgIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
