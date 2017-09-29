.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ACTIVE:Ljava/lang/Boolean;

.field public static final DEFAULT_ALIPAYNICKNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ALREADYADD:Ljava/lang/Boolean;

.field public static final DEFAULT_HEADPIC:Ljava/lang/String; = ""

.field public static final DEFAULT_LOGONID:Ljava/lang/String; = ""

.field public static final DEFAULT_REMARKNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final TAG_ACTIVE:I = 0x7

.field public static final TAG_ALIPAYNICKNAME:I = 0x3

.field public static final TAG_ALREADYADD:I = 0x6

.field public static final TAG_HEADPIC:I = 0x5

.field public static final TAG_LOGONID:I = 0x2

.field public static final TAG_REMARKNAME:I = 0x4

.field public static final TAG_USERID:I = 0x1


# instance fields
.field public active:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public alipayNickName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public alreadyAdd:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public headPic:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public logonId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public remarkName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->DEFAULT_ALREADYADD:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->DEFAULT_ACTIVE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

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
    instance-of v2, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    goto :goto_0

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
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5
.end method
