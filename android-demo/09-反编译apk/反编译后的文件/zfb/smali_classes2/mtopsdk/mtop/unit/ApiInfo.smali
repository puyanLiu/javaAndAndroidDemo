.class public Lmtopsdk/mtop/unit/ApiInfo;
.super Ljava/lang/Object;
.source "ApiInfo.java"


# instance fields
.field public api:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    check-cast p1, Lmtopsdk/mtop/unit/ApiInfo;

    .line 47
    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 48
    iget-object v2, p1, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_5
    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 53
    iget-object v2, p1, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_6
    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 32
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ApiInfo [api="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
