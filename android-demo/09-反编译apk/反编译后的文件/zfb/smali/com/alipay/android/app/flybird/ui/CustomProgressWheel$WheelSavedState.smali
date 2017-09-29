.class Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:F

.field b:F

.field c:Z

.field d:F

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    new-instance v0, Lcom/alipay/android/app/flybird/ui/a;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 670
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->a:F

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->b:F

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->c:Z

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->d:F

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->e:I

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->f:I

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->g:I

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->h:I

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->i:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->j:Z

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->k:Z

    .line 682
    return-void

    :cond_0
    move v0, v2

    .line 673
    goto :goto_0

    :cond_1
    move v0, v2

    .line 680
    goto :goto_1

    :cond_2
    move v1, v2

    .line 681
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 667
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 686
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 687
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 688
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 689
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 690
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 691
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 697
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->k:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 698
    return-void

    :cond_0
    move v0, v2

    .line 689
    goto :goto_0

    :cond_1
    move v0, v2

    .line 696
    goto :goto_1

    :cond_2
    move v1, v2

    .line 697
    goto :goto_2
.end method
