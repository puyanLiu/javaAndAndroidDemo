.class public final Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;
.super Lcom/squareup/wire/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
