.class public Lcom/alipay/transferprod/rpc/req/CreateMoneyBillReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public codeId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public hasConfirmed:Z

.field public paySessionId:Ljava/lang/String;

.field public receiverUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/transferprod/rpc/req/CreateMoneyBillReq;->hasConfirmed:Z

    return-void
.end method
