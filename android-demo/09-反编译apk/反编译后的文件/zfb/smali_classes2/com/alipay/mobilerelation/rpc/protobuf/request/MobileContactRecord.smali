.class public final Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILE:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_REMOVE:Ljava/lang/Boolean;

.field public static final TAG_MEMO:I = 0x3

.field public static final TAG_MOBILE:I = 0x2

.field public static final TAG_NAME:I = 0x1

.field public static final TAG_REMOVE:I = 0x4


# instance fields
.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public remove:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->DEFAULT_REMOVE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

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
    instance-of v2, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->mobile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->remove:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/request/MobileContactRecord;->hashCode:I

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
.end method
