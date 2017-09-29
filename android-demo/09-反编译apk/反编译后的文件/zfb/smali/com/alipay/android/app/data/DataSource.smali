.class public Lcom/alipay/android/app/data/DataSource;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/lib/plusin/ui/WindowData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/data/DataSourceObserver;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/app/data/ValidatedFrameData;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/data/ValidatedFrameData;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataSource;->b:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    .line 27
    return-void
.end method

.method private b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/DataSourceObserver;

    .line 186
    invoke-interface {v0, p1}, Lcom/alipay/android/app/data/DataSourceObserver;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private g()Lcom/alipay/android/lib/plusin/ui/WindowData;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 164
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->dispose()V

    .line 165
    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/protocol/FrameData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 172
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 177
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->m()V

    .line 178
    iget-object v1, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataSource;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/lib/plusin/protocol/FrameData;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/protocol/FrameData;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/data/DataSourceObserver;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 43
    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 45
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/android/app/data/DataSource;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/app/data/DataSource;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 77
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->g()Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->p()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 87
    :goto_1
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->i()V

    .line 88
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    :goto_2
    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 88
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 103
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->g()Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 107
    :cond_2
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->h()V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v1, 0x0

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 146
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->g()Lcom/alipay/android/lib/plusin/ui/WindowData;

    move-result-object v0

    .line 129
    if-nez v1, :cond_2

    move-object v1, v0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 137
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move-object v0, v1

    .line 141
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->i()V

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 135
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 144
    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataSource;->h()V

    goto :goto_2
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b()V

    .line 152
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/data/DataSource;->c:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->c()V

    .line 160
    return-void
.end method
