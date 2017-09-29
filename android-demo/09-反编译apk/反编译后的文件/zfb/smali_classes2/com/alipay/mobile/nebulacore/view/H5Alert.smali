.class public Lcom/alipay/mobile/nebulacore/view/H5Alert;
.super Ljava/lang/Object;
.source "H5Alert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final INDEX_CANCEL:I = 0x3

.field public static final INDEX_LEFT:I = 0x0

.field public static final INDEX_MIDDLE:I = 0x1

.field public static final INDEX_RIGHT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "H5Alert"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

.field private i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    .line 55
    return-void
.end method


# virtual methods
.method public buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 74
    :cond_0
    const-string/jumbo v0, "H5Alert"

    const-string/jumbo v1, "no buttons set."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-object p0

    .line 78
    :cond_1
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 84
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    .line 82
    :pswitch_2
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    goto :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    .line 69
    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    .line 147
    :cond_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    const-string/jumbo v0, "H5Alert"

    const-string/jumbo v1, "dismiss exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    .line 92
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;->onCancel(Lcom/alipay/mobile/nebulacore/view/H5Alert;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 151
    const/4 v0, 0x2

    .line 152
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    .line 153
    const/4 v0, 0x1

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->h:Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;->onClick(Lcom/alipay/mobile/nebulacore/view/H5Alert;I)V

    .line 166
    :cond_1
    return-void

    .line 154
    :cond_2
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_4

    .line 156
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    if-le v1, v2, :cond_0

    .line 158
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    const-string/jumbo v0, "H5Alert"

    const-string/jumbo v1, "activity is finishing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    .line 135
    :goto_0
    return-object p0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string/jumbo v0, "H5Alert"

    const-string/jumbo v1, "empty title and message"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_8

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_9

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->g:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->i:Landroid/app/AlertDialog;

    goto :goto_0

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 128
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Alert;->b:Ljava/lang/String;

    .line 59
    return-object p0
.end method
