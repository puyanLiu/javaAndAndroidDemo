.class public Lcom/alipay/fido/asm/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field protected content:Ljava/lang/String;

.field protected contentType:Ljava/lang/String;

.field protected tcDisplayPNGCharacteristics:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/fido/asm/Transaction;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/fido/asm/Transaction;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getTcDisplayPNGCharacteristics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/fido/asm/Transaction;->tcDisplayPNGCharacteristics:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/fido/asm/Transaction;->content:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/fido/asm/Transaction;->contentType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTcDisplayPNGCharacteristics(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/fido/asm/Transaction;->tcDisplayPNGCharacteristics:Ljava/lang/String;

    .line 45
    return-void
.end method
