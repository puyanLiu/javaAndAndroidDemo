.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;
.super Lcom/squareup/wire/Message;
.source "FollowAccountInfoVO.java"


# static fields
.field public static final DEFAULT_ACCEPTMSG:Ljava/lang/Boolean;

.field public static final DEFAULT_AVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_DISTURB:Ljava/lang/Boolean;

.field public static final DEFAULT_FOLLOWOBJECTID:Ljava/lang/String; = ""

.field public static final DEFAULT_FOLLOWTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_GMTFOLLOWTIME:Ljava/lang/Long;

.field public static final DEFAULT_GOTOAPPURI:Ljava/lang/String; = ""

.field public static final DEFAULT_ISFOLLOW:Ljava/lang/Boolean;

.field public static final DEFAULT_LATESTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_LATESTMSGTIME:Ljava/lang/Long;

.field public static final DEFAULT_MSGNOTETYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PLUGINTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLICCHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_UNREADMSGCOUNT:Ljava/lang/Integer;

.field public static final DEFAULT_VIP:Ljava/lang/String; = ""

.field public static final TAG_ACCEPTMSG:I = 0xd

.field public static final TAG_AVATAR:I = 0x3

.field public static final TAG_DISTURB:I = 0xc

.field public static final TAG_FOLLOWOBJECTID:I = 0x1

.field public static final TAG_FOLLOWTYPE:I = 0x8

.field public static final TAG_GMTFOLLOWTIME:I = 0xf

.field public static final TAG_GOTOAPPURI:I = 0xa

.field public static final TAG_ISFOLLOW:I = 0x4

.field public static final TAG_LATESTMSG:I = 0x5

.field public static final TAG_LATESTMSGTIME:I = 0x10

.field public static final TAG_MSGNOTETYPE:I = 0x7

.field public static final TAG_NAME:I = 0x2

.field public static final TAG_OPERATEPROPERTIES:I = 0xb

.field public static final TAG_PLUGINTYPE:I = 0x9

.field public static final TAG_PUBLICCHANNEL:I = 0xe

.field public static final TAG_UNREADMSGCOUNT:I = 0x6

.field public static final TAG_VIP:I = 0x11


# instance fields
.field public acceptMsg:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public disturb:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public followObjectId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public followType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public gmtFollowTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public gotoAppUri:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isFollow:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public latestMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public latestMsgTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public msgNoteType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
    .end annotation
.end field

.field public pluginType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public publicChannel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public unReadMsgCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public vip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_ISFOLLOW:Ljava/lang/Boolean;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_UNREADMSGCOUNT:Ljava/lang/Integer;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_DISTURB:Ljava/lang/Boolean;

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_ACCEPTMSG:Ljava/lang/Boolean;

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_GMTFOLLOWTIME:Ljava/lang/Long;

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_LATESTMSGTIME:Ljava/lang/Long;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 103
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    .line 108
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 115
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    .line 116
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    .line 117
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    .line 119
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    .line 120
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 188
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    .line 189
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 189
    goto/16 :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;
    .locals 0

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-object p0

    .line 129
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    goto :goto_0

    .line 132
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    goto :goto_0

    .line 135
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    goto :goto_0

    .line 141
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    goto :goto_0

    .line 147
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    goto :goto_0

    .line 150
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    goto :goto_0

    .line 153
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_a
    check-cast p2, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    goto :goto_0

    .line 162
    :pswitch_b
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    goto :goto_0

    .line 165
    :pswitch_c
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    goto :goto_0

    .line 168
    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    goto :goto_0

    .line 171
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    goto :goto_0

    .line 174
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    goto :goto_0

    .line 177
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->hashCode:I

    .line 211
    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 213
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 216
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 217
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 221
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    invoke-virtual {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 223
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 224
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 225
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 226
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 227
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 228
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 229
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->hashCode:I

    .line 231
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 212
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 213
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 214
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 215
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 216
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 217
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 218
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 219
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 220
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 221
    goto :goto_9

    :cond_c
    move v0, v1

    .line 222
    goto :goto_a

    :cond_d
    move v0, v1

    .line 223
    goto :goto_b

    :cond_e
    move v0, v1

    .line 224
    goto :goto_c

    :cond_f
    move v0, v1

    .line 225
    goto :goto_d

    :cond_10
    move v0, v1

    .line 226
    goto :goto_e

    :cond_11
    move v0, v1

    .line 227
    goto :goto_f
.end method
