.class public Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/ui/IWindowManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/alipay/android/app/data/BizUiData;

.field private c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

.field private d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private a(I)Lcom/alipay/android/lib/plusin/ui/IWindowManager;
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no such window type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 173
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->a(Lcom/alipay/android/app/data/BizUiData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can not creat window manager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/ui/IWindowManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 42
    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/alipay/android/lib/plusin/ui/TransWindowData;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/ui/TransWindowData;-><init>()V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V

    .line 55
    return-void
.end method

.method public final a(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b:Lcom/alipay/android/app/data/BizUiData;

    .line 76
    return-void
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->a(Lcom/alipay/android/app/data/DataProcessor;)V

    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "no window creat on update"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V
    .locals 3

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/alipay/android/app/data/DataProcessor;->b()V

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v1

    .line 92
    sget-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 93
    iget-object v2, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, v1}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(I)Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V

    .line 101
    return-void
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no such window type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-nez v0, :cond_2

    .line 122
    invoke-direct {p0, p3}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(I)Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->a(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->dispose()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 156
    :cond_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "no window creat on window loaded"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->dispose()V

    .line 60
    iput-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->c:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/ui/IWindowManager;->dispose()V

    .line 64
    iput-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->d:Lcom/alipay/android/lib/plusin/ui/IWindowManager;

    .line 66
    :cond_1
    iput-object v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b:Lcom/alipay/android/app/data/BizUiData;

    .line 67
    return-void
.end method
