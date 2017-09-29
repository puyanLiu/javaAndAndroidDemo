.class public Lcom/alipay/fido/asm/RegisterIn;
.super Ljava/lang/Object;
.source "RegisterIn.java"


# instance fields
.field protected appID:Ljava/lang/String;

.field protected attestationType:J

.field protected finalChallenge:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/fido/asm/RegisterIn;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAttestationType()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alipay/fido/asm/RegisterIn;->attestationType:J

    return-wide v0
.end method

.method public getFinalChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/fido/asm/RegisterIn;->finalChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/fido/asm/RegisterIn;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/fido/asm/RegisterIn;->appID:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setAttestationType(J)V
    .locals 0

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/alipay/fido/asm/RegisterIn;->attestationType:J

    .line 55
    return-void
.end method

.method public setFinalChallenge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/fido/asm/RegisterIn;->finalChallenge:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/fido/asm/RegisterIn;->username:Ljava/lang/String;

    .line 39
    return-void
.end method
