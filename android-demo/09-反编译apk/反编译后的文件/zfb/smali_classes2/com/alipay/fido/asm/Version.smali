.class public Lcom/alipay/fido/asm/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field protected major:S

.field protected minor:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMajor()S
    .locals 1

    .prologue
    .line 16
    iget-short v0, p0, Lcom/alipay/fido/asm/Version;->major:S

    return v0
.end method

.method public getMinor()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lcom/alipay/fido/asm/Version;->minor:S

    return v0
.end method

.method public setMajor(S)V
    .locals 0

    .prologue
    .line 19
    iput-short p1, p0, Lcom/alipay/fido/asm/Version;->major:S

    .line 20
    return-void
.end method

.method public setMinor(S)V
    .locals 0

    .prologue
    .line 25
    iput-short p1, p0, Lcom/alipay/fido/asm/Version;->minor:S

    .line 26
    return-void
.end method
