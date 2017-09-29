.class final Lcom/alipay/android/phone/messageboxapp/ui/j;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v3, 0xc8

    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->b(Lcom/alipay/android/phone/messageboxapp/ui/h;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 146
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v2, v2, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->remove_all_alert:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 147
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->alert_ok:I

    new-instance v3, Lcom/alipay/android/phone/messageboxapp/ui/k;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/messageboxapp/ui/k;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/j;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->alert_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-gt v1, v3, :cond_8

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v0

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 183
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->h(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d()V

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->i(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a()V

    .line 210
    :goto_2
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/l;

    invoke-direct {v0, p0, v2}, Lcom/alipay/android/phone/messageboxapp/ui/l;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/j;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 172
    iget-object v4, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    const-string/jumbo v5, "INIT"

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->j(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxapp/ui/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->j(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxapp/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    goto :goto_2

    .line 243
    :cond_8
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 245
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v1, v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->max_delete_toast:I

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
