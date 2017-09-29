.class public Lcom/alipay/android/app/widget/Switcher;
.super Landroid/widget/SeekBar;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/Switcher;->start()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/Switcher;->start()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/Switcher;->start()V

    .line 48
    return-void
.end method


# virtual methods
.method public getSwitcherState()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/Switcher;->a:Z

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 66
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 78
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 99
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 100
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/Switcher;->setProgress(I)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/Switcher;->a:Z

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/widget/Switcher;->setProgress(I)V

    .line 104
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/Switcher;->a:Z

    goto :goto_0
.end method

.method public setSwitcherState(Z)V
    .locals 1

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/Switcher;->setProgress(I)V

    .line 86
    :goto_0
    iput-boolean p1, p0, Lcom/alipay/android/app/widget/Switcher;->a:Z

    .line 87
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/Switcher;->setProgress(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/Switcher;->setMax(I)V

    .line 52
    invoke-virtual {p0, p0}, Lcom/alipay/android/app/widget/Switcher;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 53
    return-void
.end method
