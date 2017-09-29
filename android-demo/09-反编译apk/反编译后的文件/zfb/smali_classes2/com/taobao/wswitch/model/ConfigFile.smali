.class public Lcom/taobao/wswitch/model/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private data:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private refer:Ljava/lang/String;

.field private status:I

.field private syncPeriod:Ljava/lang/Long;

.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->refer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->status:I

    return v0
.end method

.method public getSyncPeriod()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->syncPeriod:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/taobao/wswitch/model/ConfigFile;->version:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->data:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->id:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->refer:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->status:I

    .line 114
    return-void
.end method

.method public setSyncPeriod(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->syncPeriod:Ljava/lang/Long;

    .line 29
    return-void
.end method

.method public setVersion(J)V
    .locals 0

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/taobao/wswitch/model/ConfigFile;->version:J

    .line 106
    return-void
.end method
