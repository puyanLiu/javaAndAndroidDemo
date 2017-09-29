.class Lcom/flybird/ProgressWheelHelper$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProgressWheelHelper.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


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
    .line 676
    new-instance v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState$1;

    invoke-direct {v0}, Lcom/flybird/ProgressWheelHelper$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 627
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 645
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->a:F

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->b:F

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->c:Z

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->d:F

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->e:I

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->f:I

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->g:I

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->h:I

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->i:I

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->j:Z

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->k:Z

    .line 657
    return-void

    :cond_0
    move v0, v2

    .line 648
    goto :goto_0

    :cond_1
    move v0, v2

    .line 655
    goto :goto_1

    :cond_2
    move v1, v2

    .line 656
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/flybird/ProgressWheelHelper$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 642
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 661
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 663
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 664
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 665
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 666
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 672
    iget-boolean v0, p0, Lcom/flybird/ProgressWheelHelper$WheelSavedState;->k:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 673
    return-void

    :cond_0
    move v0, v2

    .line 664
    goto :goto_0

    :cond_1
    move v0, v2

    .line 671
    goto :goto_1

    :cond_2
    move v1, v2

    .line 672
    goto :goto_2
.end method
