.class public Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWatcherImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 350
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->b:Z

    .line 353
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->c:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 358
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 359
    :goto_0
    if-ge v0, v1, :cond_1

    .line 360
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 361
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->b:Z

    .line 362
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;I)V

    .line 368
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->e(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->c:Z

    if-nez v0, :cond_2

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->c:Z

    .line 372
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 378
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    .line 382
    :goto_2
    return-void

    .line 376
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->b:Z

    if-nez v0, :cond_0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->M()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;->b:Z

    .line 402
    return-void

    .line 397
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
