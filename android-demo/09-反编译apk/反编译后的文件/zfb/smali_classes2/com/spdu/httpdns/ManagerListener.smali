.class public Lcom/spdu/httpdns/ManagerListener;
.super Ljava/lang/Object;
.source "ManagerListener.java"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spdu/httpdns/ManagerListener;->a:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/ManagerListener;->a:Ljava/util/List;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/spdu/httpdns/ManagerListener;-><init>()V

    return-void
.end method

.method public static a()Lcom/spdu/httpdns/ManagerListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/spdu/httpdns/h;->a:Lcom/spdu/httpdns/ManagerListener;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/spdu/httpdns/ManagerListener;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/spdu/httpdns/ManagerListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/spdu/httpdns/ManagerListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
