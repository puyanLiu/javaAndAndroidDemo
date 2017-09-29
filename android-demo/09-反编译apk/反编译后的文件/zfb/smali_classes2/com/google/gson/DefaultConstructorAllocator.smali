.class final Lcom/google/gson/DefaultConstructorAllocator;
.super Ljava/lang/Object;
.source "DefaultConstructorAllocator.java"


# static fields
.field private static final NULL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;


# instance fields
.field private final constructorCache:Lcom/google/gson/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/gson/DefaultConstructorAllocator;->createNullConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultConstructorAllocator;->NULL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/google/gson/DefaultConstructorAllocator;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/gson/LruCache;

    invoke-direct {v0, p1}, Lcom/google/gson/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/gson/DefaultConstructorAllocator;->constructorCache:Lcom/google/gson/Cache;

    .line 38
    return-void
.end method

.method private static final createNullConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 47
    :try_start_0
    const-class v0, Lcom/google/gson/DefaultConstructorAllocator$Null;

    invoke-static {v0}, Lcom/google/gson/DefaultConstructorAllocator;->getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gson/DefaultConstructorAllocator;->constructorCache:Lcom/google/gson/Cache;

    invoke-interface {v0, p1}, Lcom/google/gson/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    sget-object v1, Lcom/google/gson/DefaultConstructorAllocator;->NULL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/google/gson/DefaultConstructorAllocator;->getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/google/gson/DefaultConstructorAllocator;->constructorCache:Lcom/google/gson/Cache;

    invoke-interface {v1, p1, v0}, Lcom/google/gson/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/gson/DefaultConstructorAllocator;->constructorCache:Lcom/google/gson/Cache;

    sget-object v2, Lcom/google/gson/DefaultConstructorAllocator;->NULL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-interface {v1, p1, v2}, Lcom/google/gson/Cache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getNoArgsConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final isInCache(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gson/DefaultConstructorAllocator;->constructorCache:Lcom/google/gson/Cache;

    invoke-interface {v0, p1}, Lcom/google/gson/Cache;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/gson/DefaultConstructorAllocator;->findConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
