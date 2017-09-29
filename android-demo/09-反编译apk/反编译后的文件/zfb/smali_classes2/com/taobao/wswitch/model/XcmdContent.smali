.class public Lcom/taobao/wswitch/model/XcmdContent;
.super Ljava/lang/Object;
.source "XcmdContent.java"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdContent;->v:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/taobao/wswitch/model/XcmdContent;->f:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/taobao/wswitch/model/XcmdContent;->d:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getD()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdContent;->d:Ljava/util/List;

    return-object v0
.end method

.method public getF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taobao/wswitch/model/XcmdContent;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setD(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdContent;->d:Ljava/util/List;

    .line 82
    return-void
.end method

.method public setF(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdContent;->f:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taobao/wswitch/model/XcmdContent;->v:Ljava/lang/String;

    .line 54
    return-void
.end method
