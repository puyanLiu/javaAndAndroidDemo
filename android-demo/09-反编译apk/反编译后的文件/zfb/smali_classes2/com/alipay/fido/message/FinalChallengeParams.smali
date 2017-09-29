.class public Lcom/alipay/fido/message/FinalChallengeParams;
.super Ljava/lang/Object;
.source "FinalChallengeParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field appID:Ljava/lang/String;

.field challenge:Ljava/lang/String;

.field facetID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    check-cast p1, Lcom/alipay/fido/message/FinalChallengeParams;

    .line 110
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 111
    iget-object v2, p1, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 116
    iget-object v2, p1, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 121
    iget-object v2, p1, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_8
    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getFacetID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 93
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 95
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setFacetID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FinalChallengeParams [appID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", facetID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/FinalChallengeParams;->facetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
