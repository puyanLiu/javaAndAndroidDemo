.class public Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory$1;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a:I

    return-void
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_3
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;-><init>()V

    goto :goto_0

    .line 53
    :pswitch_4
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_5
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_6
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadio;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadio;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_7
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISpan;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_8
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;-><init>()V

    goto :goto_0

    .line 69
    :pswitch_9
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;-><init>()V

    goto :goto_0

    .line 72
    :pswitch_a
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;-><init>()V

    goto :goto_0

    .line 75
    :pswitch_b
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UISubmit;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISubmit;-><init>()V

    goto :goto_0

    .line 78
    :pswitch_c
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;-><init>()V

    goto :goto_0

    .line 81
    :pswitch_d
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;-><init>()V

    goto :goto_0

    .line 84
    :pswitch_e
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UILine;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILine;-><init>()V

    goto :goto_0

    .line 87
    :pswitch_f
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;-><init>()V

    goto :goto_0

    .line 90
    :pswitch_10
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;-><init>()V

    goto :goto_0

    .line 93
    :pswitch_11
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIndexList;-><init>()V

    goto :goto_0

    .line 96
    :pswitch_12
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;-><init>()V

    goto :goto_0

    .line 99
    :pswitch_13
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;-><init>()V

    goto :goto_0

    .line 102
    :pswitch_14
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;-><init>()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    sget v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 116
    sget v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a:I

    goto :goto_0
.end method
