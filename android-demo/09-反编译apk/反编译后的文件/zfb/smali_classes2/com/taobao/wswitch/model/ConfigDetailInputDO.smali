.class public Lcom/taobao/wswitch/model/ConfigDetailInputDO;
.super Ljava/lang/Object;
.source "ConfigDetailInputDO.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private VERSION:Ljava/lang/String;

.field private atoken:Ljava/lang/String;

.field private groups:Ljava/lang/String;

.field private receipt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "mtop.auks.mc.synconfig"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->API_NAME:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->VERSION:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->groups:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->atoken:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAtoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->atoken:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->groups:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->receipt:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->API_NAME:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setAtoken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->atoken:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setGroups(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->groups:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setReceipt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->receipt:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->VERSION:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConfigDetailInputDO [groups="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->groups:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", atoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->atoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
