.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWatcherImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 1

    .prologue
    .line 613
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 619
    const-string/jumbo v1, ""

    move v2, v0

    .line 621
    :goto_0
    if-ge v2, v3, :cond_2

    .line 622
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 623
    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 624
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v5, v6, :cond_1

    .line 631
    :cond_0
    const/4 v0, 0x1

    .line 621
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 636
    :cond_2
    if-eqz v0, :cond_3

    .line 637
    const-string/jumbo v1, ""

    .line 639
    :cond_3
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 653
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 654
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 655
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    .line 656
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->b:Z

    .line 660
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "*"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 654
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 665
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 667
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 669
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    goto/16 :goto_0

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 690
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 693
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->b:Z

    if-nez v0, :cond_2

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;->b:Z

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
