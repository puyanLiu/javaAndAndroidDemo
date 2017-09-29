.class public Lmtopsdk/mtop/xcommand/XcmdEventMgr;
.super Ljava/lang/Object;
.source "XcmdEventMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XcmdEventMgr"

.field static listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmtopsdk/mtop/xcommand/XcmdListener;",
            ">;"
        }
    .end annotation
.end field

.field static newListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmtopsdk/mtop/xcommand/NewXcmdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->listeners:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/mtop/xcommand/XcmdEventMgr$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr$SingletonHolder;->xm:Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    return-object v0
.end method


# virtual methods
.method public addListener(Lmtopsdk/mtop/xcommand/XcmdListener;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addNewXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v0, "newConfig="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lmtopsdk/mtop/xcommand/XcmdEvent;

    const-string/jumbo v2, "newConfig="

    invoke-direct {v1, v2, v0}, Lmtopsdk/mtop/xcommand/XcmdEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/xcommand/XcmdListener;

    .line 84
    :try_start_0
    invoke-interface {v0, v1}, Lmtopsdk/mtop/xcommand/XcmdListener;->onEvent(Lmtopsdk/mtop/xcommand/XcmdEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :cond_2
    new-instance v1, Lmtopsdk/mtop/xcommand/NewXcmdEvent;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/xcommand/NewXcmdEvent;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/xcommand/NewXcmdListener;

    .line 94
    :try_start_1
    invoke-interface {v0, v1}, Lmtopsdk/mtop/xcommand/NewXcmdListener;->onEvent(Lmtopsdk/mtop/xcommand/NewXcmdEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public removeListener(Lmtopsdk/mtop/xcommand/XcmdListener;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public removeNewXcmdListener(Lmtopsdk/mtop/xcommand/NewXcmdListener;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->newListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
