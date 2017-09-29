.class Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;
.super Lcom/alipay/android/phone/thirdparty/common/log/Logger;
.source "Log.java"


# static fields
.field private static instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;


# instance fields
.field buf:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    invoke-direct {v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 142
    return v2
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Log$J2seLogger;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
