.class public Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;
.super Ljava/lang/Object;
.source "ChatMsgObj.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/ChatMsgDatabaseDaoImpl;
.end annotation


# static fields
.field public static final MESSAGE_DOWNLOADING:I = 0x1

.field public static final MESSAGE_DOWNLOAD_FAILED:I = 0x2

.field public static final MESSAGE_DOWNLOAD_SUCCESS:I = 0x0

.field public static final MESSAGE_UPLOADING:I = 0x1

.field public static final MESSAGE_UPLOAD_FAILED:I = 0x2

.field public static final MESSAGE_UPLOAD_SUCCESS:I = 0x0

.field public static final serialVersionUID:J = -0x13987715386437abL


# instance fields
.field public action:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public atMe:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bizIcon:Ljava/lang/String;
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

.field public countAsUnread:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public egg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public errorCode:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public errorMemo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public extendData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isEggRead:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isResourceUploaded:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public loadingState:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public localId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public mSenderUserId:Ljava/lang/String;

.field public mediaState:Ljava/lang/String;
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

.field public recent:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public scene:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sendingState:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public side:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public templateCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public templateData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string/jumbo v0, "{\"expressionState\":0,\"audioState\":0,\"gameState\":0}"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mediaState:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string/jumbo v0, "{\"expressionState\":0,\"audioState\":0,\"gameState\":0}"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mediaState:Ljava/lang/String;

    .line 221
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iput v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    .line 226
    :goto_0
    iget-wide v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgId:J

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->msgId:J

    .line 227
    iget-wide v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    .line 228
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    .line 229
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 230
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 231
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 232
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->egg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->egg:Ljava/lang/String;

    .line 233
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->link:Ljava/lang/String;

    .line 234
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTime:Ljava/util/Date;

    if-nez v0, :cond_3

    .line 235
    iget-wide v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTimeMills:J

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    .line 239
    :goto_1
    iget v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->action:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->action:I

    .line 240
    const-string/jumbo v0, "1"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->recent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->recent:Z

    .line 241
    const-string/jumbo v0, "1"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->read:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->countAsUnread:Z

    .line 242
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-ne v0, v2, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->countAsUnread:Z

    .line 245
    :cond_0
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizMemo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    const-string/jumbo v1, "\\"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "11"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 288
    :cond_1
    :goto_4
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->hintMemo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->atMe:Ljava/lang/String;

    .line 289
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->bizRemind:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    .line 290
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->msgIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->msgIndex:Ljava/lang/String;

    .line 291
    return-void

    .line 224
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->createTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    goto :goto_1

    :cond_4
    move v0, v2

    .line 240
    goto :goto_2

    :cond_5
    move v0, v2

    .line 241
    goto :goto_3

    .line 252
    :cond_6
    const-string/jumbo v0, "12"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    const-string/jumbo v0, "[\u8bed\u97f3]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_4

    .line 254
    :cond_7
    const-string/jumbo v0, "13"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    const-string/jumbo v0, "[\u52a8\u753b\u8868\u60c5]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_4

    .line 256
    :cond_8
    const-string/jumbo v0, "14"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    const-string/jumbo v0, "[\u56fe\u7247]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_4

    .line 258
    :cond_9
    const-string/jumbo v0, "19"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 259
    const-string/jumbo v0, "[\u5c0f\u89c6\u9891]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_4

    .line 260
    :cond_a
    const-string/jumbo v0, "20"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 261
    const-string/jumbo v0, "[\u89c6\u9891]"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto :goto_4

    .line 262
    :cond_b
    const-string/jumbo v0, "8003"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_1

    const-string/jumbo v0, "m"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    const-string/jumbo v0, "m"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    const/4 v0, 0x0

    .line 268
    instance-of v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    if-eqz v3, :cond_c

    .line 269
    iget-object v0, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    .line 271
    :cond_c
    invoke-static {v2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/tag/UidTagHandler;->parseUidMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    const-string/jumbo v3, "m"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 275
    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto/16 :goto_4

    .line 280
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 277
    :cond_d
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/tag/UidTagHandler;->parseUidMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_1

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    goto/16 :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 193
    if-ne p0, p1, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    .line 197
    :cond_0
    if-nez p1, :cond_1

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 205
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 214
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public replaceWithRevertMsg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "8003"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    .line 295
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

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateData:Ljava/lang/String;

    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    .line 297
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "CHAT"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->recent:Z

    .line 300
    return-void
.end method
