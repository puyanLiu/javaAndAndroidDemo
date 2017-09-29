.class Lcom/flybird/FBInput$7;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;

.field private final synthetic b:Lcom/alipay/android/app/template/YearMonthPickerDialog;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;Lcom/alipay/android/app/template/YearMonthPickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    iput-object p2, p0, Lcom/flybird/FBInput$7;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/flybird/FBInput$7;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->getYear()I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    iget-object v2, p0, Lcom/flybird/FBInput$7;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBInput;->b(Lcom/flybird/FBInput;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flybird/FBInput;->c(Lcom/flybird/FBInput;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->g(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    invoke-static {v1}, Lcom/flybird/FBInput;->b(Lcom/flybird/FBInput;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flybird/FBInput$7;->a:Lcom/flybird/FBInput;

    invoke-static {v3}, Lcom/flybird/FBInput;->h(Lcom/flybird/FBInput;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 515
    return-void
.end method
