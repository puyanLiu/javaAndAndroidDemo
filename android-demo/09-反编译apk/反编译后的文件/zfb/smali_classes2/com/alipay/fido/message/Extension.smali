.class public Lcom/alipay/fido/message/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field data:Ljava/lang/String;

.field fail_if_unknown:Z

.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/fido/message/Extension;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/fido/message/Extension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isFail_if_unknown()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alipay/fido/message/Extension;->fail_if_unknown:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/fido/message/Extension;->data:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setFail_if_unknown(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alipay/fido/message/Extension;->fail_if_unknown:Z

    .line 42
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/fido/message/Extension;->id:Ljava/lang/String;

    .line 26
    return-void
.end method
