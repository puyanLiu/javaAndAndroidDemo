.class public Lcom/alipay/fido/message/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# instance fields
.field accepted:[[Lcom/alipay/fido/message/MatchCriteria;

.field disallowed:[Lcom/alipay/fido/message/MatchCriteria;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getAccepted()[[Lcom/alipay/fido/message/MatchCriteria;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/fido/message/Policy;->accepted:[[Lcom/alipay/fido/message/MatchCriteria;

    return-object v0
.end method

.method public getDisallowed()[Lcom/alipay/fido/message/MatchCriteria;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/fido/message/Policy;->disallowed:[Lcom/alipay/fido/message/MatchCriteria;

    return-object v0
.end method

.method public setAccepted([[Lcom/alipay/fido/message/MatchCriteria;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/fido/message/Policy;->accepted:[[Lcom/alipay/fido/message/MatchCriteria;

    .line 47
    return-void
.end method

.method public setDisallowed([Lcom/alipay/fido/message/MatchCriteria;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/fido/message/Policy;->disallowed:[Lcom/alipay/fido/message/MatchCriteria;

    .line 65
    return-void
.end method
