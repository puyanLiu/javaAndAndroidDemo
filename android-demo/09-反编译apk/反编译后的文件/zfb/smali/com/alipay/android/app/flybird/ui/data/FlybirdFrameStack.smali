.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private b(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;

    .line 180
    const/4 v2, 0x1

    invoke-interface {v0, p0, p1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;->onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 203
    sget-object v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    .line 205
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 207
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private f()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    .line 166
    sget-object v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V
    .locals 1

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 2

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "frame count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 145
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    if-nez v3, :cond_1

    move v0, v2

    .line 136
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->f()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :goto_3
    const-string/jumbo v2, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 142
    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->v()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_4
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->f()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 152
    return-void
.end method

.method public final d()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 185
    .line 186
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 188
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    .line 190
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 188
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 196
    :cond_1
    return-object v0
.end method
