.class public Lcom/alipay/mobile/beehive/eventbus/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# instance fields
.field private final hashCode:I

.field private isWeakRef:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final subscriber:Ljava/lang/Object;

.field private threadMode:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

.field private whiteListKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/alipay/mobile/beehive/eventbus/ThreadMode;Z)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "EventHandler target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "EventHandler method cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-boolean p4, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->isWeakRef:Z

    .line 42
    if-eqz p4, :cond_2

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    .line 48
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    iput-object p3, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->threadMode:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    .line 54
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->hashCode:I

    .line 56
    return-void

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    goto :goto_0
.end method

.method private invoke(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 81
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->isWeakRef:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_0
    array-length v2, v1

    if-ne v2, v3, :cond_3

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EventBus"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "EventHandler( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")not exec because it use WeakRef and is garbage collected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_3
    array-length v1, v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 148
    :goto_0
    return v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    move v0, v3

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v3

    .line 134
    goto :goto_0

    .line 138
    :cond_2
    check-cast p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 139
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->isWeakRef:Z

    iget-boolean v1, p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->isWeakRef:Z

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 140
    goto :goto_0

    .line 143
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->isWeakRef:Z

    if-nez v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    iget-object v1, p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 147
    iget-object v1, p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 148
    iget-object v4, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    iget-object v5, p1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public getThreadMode()Lcom/alipay/mobile/beehive/eventbus/ThreadMode;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->threadMode:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    return-object v0
.end method

.method public getWhiteListKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->whiteListKey:Ljava/lang/String;

    return-object v0
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 72
    :cond_0
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->hashCode:I

    return v0
.end method

.method public setWhiteListKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->whiteListKey:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[EventHandler "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->subscriber:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
