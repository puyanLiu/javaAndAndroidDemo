.class public Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWatcherImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->b:Z

    .line 149
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->c:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 155
    :goto_0
    if-ge v0, v1, :cond_1

    .line 156
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->b:Z

    .line 158
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$202(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$300(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;I)V

    .line 164
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->c:Z

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;->a()V

    .line 170
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->c:Z

    if-nez v0, :cond_3

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->c:Z

    .line 180
    :cond_3
    :goto_1
    return-void

    .line 175
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->b:Z

    if-nez v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;->b:Z

    .line 200
    return-void

    .line 195
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
