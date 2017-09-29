.class public Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    .line 25
    return-void
.end method

.method public static a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;-><init>()V

    sput-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    .line 31
    :cond_0
    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    sput-object p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/android/lib/plusin/script/IScriptExcutor;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    .line 52
    if-nez v0, :cond_0

    .line 54
    :try_start_0
    sget-object v1, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    .line 56
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "can not creat script excutor"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 71
    :cond_0
    return-void
.end method
