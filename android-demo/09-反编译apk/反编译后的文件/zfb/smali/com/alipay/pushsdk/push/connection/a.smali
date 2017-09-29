.class public abstract Lcom/alipay/pushsdk/push/connection/a;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static a:Z

.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/pushsdk/push/b/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/pushsdk/push/f/d;",
            "Lcom/alipay/pushsdk/push/connection/b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/alipay/pushsdk/push/f/d;

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/pushsdk/push/f/d;",
            "Lcom/alipay/pushsdk/push/connection/b;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/io/DataInputStream;

.field protected g:Ljava/io/DataOutputStream;

.field protected final h:I

.field protected final i:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/pushsdk/push/connection/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    sput-boolean v1, Lcom/alipay/pushsdk/push/connection/a;->a:Z

    .line 30
    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/pushsdk/push/connection/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->c:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->e:Ljava/util/Map;

    .line 100
    sget-object v0, Lcom/alipay/pushsdk/push/connection/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/a;->h:I

    .line 115
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/a;->i:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    .line 116
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->d:Lcom/alipay/pushsdk/push/f/d;

    .line 66
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/b/c;)V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    if-nez p1, :cond_2

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/alipay/pushsdk/push/f/d;)V
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/a;->d:Lcom/alipay/pushsdk/push/f/d;

    .line 62
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->i:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->d:Lcom/alipay/pushsdk/push/f/d;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->d:Lcom/alipay/pushsdk/push/f/d;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/f/d;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->i:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->b()I

    move-result v0

    return v0
.end method

.method public abstract d()Z
.end method

.method protected final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/pushsdk/push/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    return-object v0
.end method
