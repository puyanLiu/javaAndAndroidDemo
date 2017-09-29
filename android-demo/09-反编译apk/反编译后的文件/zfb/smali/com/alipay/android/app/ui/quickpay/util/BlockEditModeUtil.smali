.class public Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;


# instance fields
.field private b:[I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c:I

    .line 17
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d:Z

    .line 18
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e:Z

    .line 19
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->f:Z

    return-void
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->f()Ljava/util/List;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 133
    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 138
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 83
    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 91
    if-ge p1, p2, :cond_3

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    .line 93
    :goto_1
    if-ge p1, p2, :cond_2

    .line 94
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    aput v2, v1, p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    .line 99
    :goto_2
    if-le p1, p2, :cond_4

    .line 100
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aput v2, v1, p1

    .line 99
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d:Z

    .line 35
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c:I

    .line 127
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e:Z

    .line 39
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->f:Z

    .line 147
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v2, v1

    move v1, v0

    .line 56
    :goto_0
    if-ge v1, v2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 64
    :cond_0
    return v0

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->d:Z

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->e:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string/jumbo v0, ""

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v3, v1

    .line 111
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 118
    :cond_1
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->f:Z

    return v0
.end method
