.class public Lcom/alipay/mobile/command/util/exception/RpcException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = -0x27e79b9ef4131536L


# instance fields
.field private mCode:I

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RPCException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mCode:I

    iput-object p2, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mCode:I

    iput-object p1, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/util/exception/RpcException;->mOperationType:Ljava/lang/String;

    return-void
.end method
