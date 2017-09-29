.class public Lcom/taobao/wswitch/model/ConfigMtopResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ConfigMtopResponse.java"


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ConfigMtopResponse;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigMtopResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigMtopResponse;->data:Ljava/lang/String;

    .line 28
    return-void
.end method
