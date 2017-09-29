.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;
.super Ljava/lang/Error;
.source "ANRError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v0, "Application Not Responding"

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;->_stackTraces:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public static New(Ljava/lang/String;Z)Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 68
    new-instance v4, Ljava/util/TreeMap;

    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/a;

    invoke-direct {v0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/a;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 92
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;

    new-instance v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {v6, v1, v0, v7}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v6, v2, v7}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;B)V

    move-object v2, v3

    goto :goto_1

    .line 98
    :cond_3
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;

    invoke-direct {v0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;Ljava/util/Map;)V

    return-object v0
.end method

.method public static NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;

    new-instance v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;

    new-instance v5, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v1, v6}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar;Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;B)V

    invoke-direct {v3, v4, v2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError$Dollar$_Thread;Ljava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 62
    return-object p0
.end method

.method public getStackTraces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;->_stackTraces:Ljava/util/Map;

    return-object v0
.end method
