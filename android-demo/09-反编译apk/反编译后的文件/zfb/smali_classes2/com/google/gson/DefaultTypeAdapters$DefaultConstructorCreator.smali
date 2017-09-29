.class final Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/google/gson/InstanceCreator;


# instance fields
.field private final allocator:Lcom/google/gson/DefaultConstructorAllocator;

.field private final defaultInstance:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V
    .locals 0

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->defaultInstance:Ljava/lang/Class;

    .line 1042
    iput-object p2, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    .line 1043
    return-void
.end method


# virtual methods
.method public final createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1046
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    invoke-virtual {v1, v0}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1049
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    iget-object v1, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->defaultInstance:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    const-class v0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
