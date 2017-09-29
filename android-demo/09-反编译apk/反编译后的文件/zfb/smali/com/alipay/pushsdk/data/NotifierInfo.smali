.class public Lcom/alipay/pushsdk/data/NotifierInfo;
.super Ljava/lang/Object;
.source "NotifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/pushsdk/data/NotifierInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Lcom/alipay/pushsdk/data/MsgInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/alipay/pushsdk/data/c;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/c;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/data/NotifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 31
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    .line 32
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const-wide/16 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 31
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    .line 32
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 57
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.Parcel..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setMissionId(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setPubMsgId(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setCommandType(I)V

    .line 86
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/alipay/pushsdk/data/NotifierInfo;
    .locals 5

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>()V

    .line 278
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setTitle(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setContent(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v2, "snd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setSound(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setUri(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "style"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setStyle(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setBadge(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "tMsgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setTMsgId(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v2, "noticeExt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setNoticeExt(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v2, "bizType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setBizType(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v2, "syncId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setSyncId(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "syncData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setSyncData(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "showOffset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDelayOffset(J)V

    .line 292
    const-string/jumbo v2, "showToTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDelayToTime(J)V

    .line 293
    const-string/jumbo v2, "showTimeout"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDisplayTimeout(J)V

    .line 294
    const-string/jumbo v2, "idenOfUser"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setUserId(Ljava/lang/String;)V

    .line 296
    new-instance v2, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v2}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    .line 297
    const-string/jumbo v3, "pubmsgid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setPubMsgId(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v3, "k"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v3, "permsgid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v3, "notificationMissionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setMissionId(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v3, "commandType"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setCommandType(I)V

    .line 302
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setMsgInfo(Lcom/alipay/pushsdk/data/MsgInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-object v0

    .line 304
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    .line 307
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayOffset()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    return-wide v0
.end method

.method public getDelayToTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    return-wide v0
.end method

.method public getDisplayTimeout()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    return-object v0
.end method

.method public getNoticeExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDelayOffset(J)V
    .locals 0

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    .line 90
    return-void
.end method

.method public setDelayToTime(J)V
    .locals 0

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 98
    return-void
.end method

.method public setDisplayTimeout(J)V
    .locals 0

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    .line 106
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setMsgInfo(Lcom/alipay/pushsdk/data/MsgInfo;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 198
    return-void
.end method

.method public setNoticeExt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSyncData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setSyncId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setTMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 231
    const-string/jumbo v1, "msgId"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string/jumbo v1, "msgTitle"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_0
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v1, "snd"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSound()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v1, "uri"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v1, "style"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v1, "badge"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v1, "tMsgId"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getTMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v1, "noticeExt"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getNoticeExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string/jumbo v1, "bizType"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getBizType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string/jumbo v1, "syncId"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSyncId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v1, "syncData"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSyncData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v1, "showOffset"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v1, "showToTime"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v1, "showTimeout"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v1, "idenOfUser"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v1, "pubmsgid"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v1, "k"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v1, "permsgid"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v1, "notificationMissionId"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMissionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v1, "commandType"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getCommandType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string/jumbo v1, "NotifierInfo"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMissionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->q:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getCommandType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void
.end method
