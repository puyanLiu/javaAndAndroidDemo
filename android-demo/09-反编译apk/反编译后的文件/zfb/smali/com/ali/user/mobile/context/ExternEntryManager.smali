.class public Lcom/ali/user/mobile/context/ExternEntryManager;
.super Ljava/lang/Object;
.source "ExternEntryManager.java"


# static fields
.field public static final EXT_ENTRY_LEFT:I = 0x0

.field public static final EXT_ENTRY_RIGHT:I = 0x1

.field private static a:Lcom/ali/user/mobile/context/ExternEntryManager;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/context/ExternEntryManager;->b:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/ali/user/mobile/context/ExternEntryManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ali/user/mobile/context/ExternEntryManager;->a:Lcom/ali/user/mobile/context/ExternEntryManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/ali/user/mobile/context/ExternEntryManager;

    invoke-direct {v0}, Lcom/ali/user/mobile/context/ExternEntryManager;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/context/ExternEntryManager;->a:Lcom/ali/user/mobile/context/ExternEntryManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/ExternEntryManager;->a:Lcom/ali/user/mobile/context/ExternEntryManager;

    return-object v0
.end method


# virtual methods
.method public addExternEntry(ILcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ali/user/mobile/context/ExternEntryManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public getEntryMeta(I)Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/context/ExternEntryManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;

    return-object v0
.end method

.method public removeExternEntry(I)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/context/ExternEntryManager;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
