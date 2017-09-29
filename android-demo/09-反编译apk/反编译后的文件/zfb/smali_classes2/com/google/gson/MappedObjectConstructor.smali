.class final Lcom/google/gson/MappedObjectConstructor;
.super Ljava/lang/Object;
.source "MappedObjectConstructor.java"

# interfaces
.implements Lcom/google/gson/ObjectConstructor;


# static fields
.field private static final defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

.field private static final unsafeAllocator:Lcom/google/gson/UnsafeAllocator;


# instance fields
.field private final instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/google/gson/UnsafeAllocator;->create()Lcom/google/gson/UnsafeAllocator;

    move-result-object v0

    sput-object v0, Lcom/google/gson/MappedObjectConstructor;->unsafeAllocator:Lcom/google/gson/UnsafeAllocator;

    .line 36
    new-instance v0, Lcom/google/gson/DefaultConstructorAllocator;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultConstructorAllocator;-><init>(I)V

    sput-object v0, Lcom/google/gson/MappedObjectConstructor;->defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 44
    return-void
.end method

.method private constructWithAllocators(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    sget-object v0, Lcom/google/gson/MappedObjectConstructor;->defaultConstructorAllocator:Lcom/google/gson/DefaultConstructorAllocator;

    invoke-virtual {v0, v1}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/MappedObjectConstructor;->unsafeAllocator:Lcom/google/gson/UnsafeAllocator;

    invoke-virtual {v0, v1}, Lcom/google/gson/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/InstanceCreator;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gson/MappedObjectConstructor;->constructWithAllocators(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gson/MappedObjectConstructor;->instanceCreatorMap:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
