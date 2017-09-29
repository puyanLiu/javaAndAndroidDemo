.class public Lcom/taobao/wswitch/model/ConfigReceiptInputDO;
.super Ljava/lang/Object;
.source "ConfigReceiptInputDO.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private final API_NAME:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private cversion:Ljava/lang/String;

.field private err:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private gname:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "mtop.auks.mc.receipt"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->API_NAME:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->VERSION:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "mtop.auks.mc.receipt"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->API_NAME:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->VERSION:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gname:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->cversion:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->token:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gid:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->err:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "mtop.auks.mc.receipt"

    return-object v0
.end method

.method public getCversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->cversion:Ljava/lang/String;

    return-object v0
.end method

.method public getErr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->err:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getGname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "1.0"

    return-object v0
.end method

.method public setCversion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->cversion:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->err:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setGname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->gname:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigReceiptInputDO;->token:Ljava/lang/String;

    .line 88
    return-void
.end method
