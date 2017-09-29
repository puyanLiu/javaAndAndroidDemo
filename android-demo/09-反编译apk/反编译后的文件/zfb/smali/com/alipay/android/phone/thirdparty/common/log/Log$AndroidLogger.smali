.class Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;
.super Lcom/alipay/android/phone/thirdparty/common/log/Logger;
.source "Log.java"


# static fields
.field private static instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;


# instance fields
.field private LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;-><init>()V

    .line 20
    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    .line 24
    :try_start_0
    const-string/jumbo v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 25
    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    array-length v3, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    sget-object v4, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_LVL:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aput-object v4, v0, v1

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    aget-object v0, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 36
    :catch_1
    move-exception v0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    invoke-direct {v0}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->instance:Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    aget-object v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    aget-object v0, v0, v2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/log/Log$AndroidLogger;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
