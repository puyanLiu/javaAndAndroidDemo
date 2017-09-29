.class public final Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ACTIVESTATUS:Ljava/lang/String; = ""

.field public static final DEFAULT_CURRENTPRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_CUSTOMERTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_DOWNLOADURL:Ljava/lang/String; = ""

.field public static final DEFAULT_EXISTNEWVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTERN_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRESATTRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/ExternParamsWithout;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_HEADIMG:Ljava/lang/String; = ""

.field public static final DEFAULT_ISBINDCARD:Ljava/lang/Boolean;

.field public static final DEFAULT_ISCERTIFIED:Ljava/lang/String; = ""

.field public static final DEFAULT_ISWIRELESSUSER:Ljava/lang/Boolean;

.field public static final DEFAULT_LOGINCHECKCODEIMG:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINCHECKCODEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINCONTEXT:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINSERVERTIME:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGINTOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILENO:Ljava/lang/String; = ""

.field public static final DEFAULT_OPERATORID:Ljava/lang/String; = ""

.field public static final DEFAULT_OPERATORNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

.field public static final DEFAULT_SESSIONID:Ljava/lang/String; = ""

.field public static final DEFAULT_TAOBAOSID:Ljava/lang/String; = ""

.field public static final DEFAULT_TBCHECKCODEID:Ljava/lang/String; = ""

.field public static final DEFAULT_TBCHECKCODEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final DEFAULT_USERNAME:Ljava/lang/String; = ""

.field public static final TAG_ACTIVESTATUS:I = 0x1a

.field public static final TAG_CURRENTPRODUCTVERSION:I = 0xd

.field public static final TAG_CUSTOMERTYPE:I = 0x19

.field public static final TAG_DOWNLOADURL:I = 0xf

.field public static final TAG_EXISTNEWVERSION:I = 0xe

.field public static final TAG_EXTERN_TOKEN:I = 0xa

.field public static final TAG_EXTRESATTRS:I = 0x1c

.field public static final TAG_HEADIMG:I = 0x1b

.field public static final TAG_ISBINDCARD:I = 0x17

.field public static final TAG_ISCERTIFIED:I = 0x7

.field public static final TAG_ISWIRELESSUSER:I = 0x16

.field public static final TAG_LOGINCHECKCODEIMG:I = 0x11

.field public static final TAG_LOGINCHECKCODEURL:I = 0x10

.field public static final TAG_LOGINCONTEXT:I = 0x14

.field public static final TAG_LOGINID:I = 0x3

.field public static final TAG_LOGINSERVERTIME:I = 0x8

.field public static final TAG_LOGINTOKEN:I = 0xb

.field public static final TAG_MEMO:I = 0x2

.field public static final TAG_MOBILENO:I = 0x6

.field public static final TAG_OPERATORID:I = 0x15

.field public static final TAG_OPERATORNAME:I = 0x18

.field public static final TAG_RESULTSTATUS:I = 0x1

.field public static final TAG_SESSIONID:I = 0xc

.field public static final TAG_TAOBAOSID:I = 0x9

.field public static final TAG_TBCHECKCODEID:I = 0x12

.field public static final TAG_TBCHECKCODEURL:I = 0x13

.field public static final TAG_USERID:I = 0x4

.field public static final TAG_USERNAME:I = 0x5


# instance fields
.field public activeStatus:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public currentProductVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public customerType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public downloadURL:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public existNewVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extResAttrs:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/ExternParamsWithout;",
            ">;"
        }
    .end annotation
.end field

.field public extern_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public headImg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isBindCard:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isCertified:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isWirelessUser:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginCheckCodeImg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginCheckCodeUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginContext:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginServerTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loginToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileNo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public operatorId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public operatorName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public taobaoSid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tbCheckCodeId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tbCheckCodeUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->DEFAULT_ISWIRELESSUSER:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->DEFAULT_ISBINDCARD:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->DEFAULT_EXTRESATTRS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_16
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_17
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    goto/16 :goto_0

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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->operatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->activeStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileapp/biz/rpc/userlogin/vo/UserLoginGWResultPb;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_a

    :cond_d
    move v0, v1

    goto/16 :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_c

    :cond_f
    move v0, v1

    goto/16 :goto_d

    :cond_10
    move v0, v1

    goto/16 :goto_e

    :cond_11
    move v0, v1

    goto/16 :goto_f

    :cond_12
    move v0, v1

    goto/16 :goto_10

    :cond_13
    move v0, v1

    goto/16 :goto_11

    :cond_14
    move v0, v1

    goto/16 :goto_12

    :cond_15
    move v0, v1

    goto/16 :goto_13

    :cond_16
    move v0, v1

    goto/16 :goto_14

    :cond_17
    move v0, v1

    goto/16 :goto_15

    :cond_18
    move v0, v1

    goto/16 :goto_16

    :cond_19
    move v0, v1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_19

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1a
.end method
