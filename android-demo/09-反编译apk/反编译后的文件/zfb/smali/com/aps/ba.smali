.class public final Lcom/aps/ba;
.super Ljava/lang/Object;


# static fields
.field private static c:I

.field private static d:I

.field private static f:F


# instance fields
.field protected a:Lcom/aps/be;

.field protected b:Lcom/aps/bb;

.field private e:Lcom/aps/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/aps/ba;->c:I

    const/16 v0, 0x64

    sput v0, Lcom/aps/ba;->d:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/aps/ba;->f:F

    return-void
.end method

.method protected constructor <init>(Lcom/aps/am;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aps/be;

    invoke-direct {v0, p0}, Lcom/aps/be;-><init>(Lcom/aps/ba;)V

    iput-object v0, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    new-instance v0, Lcom/aps/bb;

    invoke-direct {v0, p0}, Lcom/aps/bb;-><init>(Lcom/aps/ba;)V

    iput-object v0, p0, Lcom/aps/ba;->b:Lcom/aps/bb;

    iput-object p1, p0, Lcom/aps/ba;->e:Lcom/aps/am;

    return-void
.end method

.method protected static a()V
    .locals 0

    return-void
.end method

.method protected static a(I)V
    .locals 0

    sput p0, Lcom/aps/ba;->c:I

    return-void
.end method

.method protected static b(I)V
    .locals 0

    sput p0, Lcom/aps/ba;->d:I

    return-void
.end method


# virtual methods
.method protected final a(Landroid/location/Location;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aps/ba;->e:Lcom/aps/am;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/aps/ba;->e:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->j()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cell.list.size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2

    new-instance v3, Lcom/aps/bc;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    invoke-direct {v3, v0}, Lcom/aps/bc;-><init>(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/aps/ba;->b:Lcom/aps/bb;

    iget-object v0, v0, Lcom/aps/bb;->b:Landroid/location/Location;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    move-object v0, v3

    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/aps/ba;->b:Lcom/aps/bb;

    iput-object v0, v1, Lcom/aps/bb;->a:Lcom/aps/bc;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aps/ba;->b:Lcom/aps/bb;

    iget-object v0, v0, Lcom/aps/bb;->b:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v4, Lcom/aps/ba;->d:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aps/ba;->b:Lcom/aps/bb;

    iget-object v0, v0, Lcom/aps/bb;->a:Lcom/aps/bc;

    iget v4, v3, Lcom/aps/bc;->e:I

    iget v5, v0, Lcom/aps/bc;->e:I

    if-ne v4, v5, :cond_5

    iget v4, v3, Lcom/aps/bc;->d:I

    iget v5, v0, Lcom/aps/bc;->d:I

    if-ne v4, v5, :cond_5

    iget v4, v3, Lcom/aps/bc;->c:I

    iget v5, v0, Lcom/aps/bc;->c:I

    if-ne v4, v5, :cond_5

    iget v4, v3, Lcom/aps/bc;->b:I

    iget v5, v0, Lcom/aps/bc;->b:I

    if-ne v4, v5, :cond_5

    iget v4, v3, Lcom/aps/bc;->a:I

    iget v0, v0, Lcom/aps/bc;->a:I

    if-ne v4, v0, :cond_5

    move v0, v1

    :goto_4
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v2, v0

    move-object v0, v3

    goto :goto_2
.end method

.method protected final b(Landroid/location/Location;)Z
    .locals 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/aps/ba;->e:Lcom/aps/am;

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/aps/ba;->e:Lcom/aps/am;

    invoke-virtual {v0}, Lcom/aps/am;->k()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    iget-object v1, v1, Lcom/aps/be;->b:Landroid/location/Location;

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    iget-object v0, v0, Lcom/aps/be;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v4, v3, :cond_e

    iget-object v0, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    iget-object v5, v0, Lcom/aps/be;->a:Ljava/util/List;

    new-instance v6, Lcom/aps/bd;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/aps/bd;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    iget-object v1, v1, Lcom/aps/be;->b:Landroid/location/Location;

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    sget v2, Lcom/aps/ba;->c:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move v1, v3

    :goto_4
    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/aps/ba;->a:Lcom/aps/be;

    iget-object v7, v1, Lcom/aps/be;->a:Ljava/util/List;

    sget v8, Lcom/aps/ba;->f:F

    if-eqz v0, :cond_2

    if-nez v7, :cond_4

    :cond_2
    move v1, v4

    :goto_5
    if-nez v1, :cond_d

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    if-nez v7, :cond_6

    :cond_5
    move v1, v4

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int v1, v9, v10

    int-to-float v11, v1

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    if-nez v10, :cond_9

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    move v6, v4

    move v2, v4

    :goto_6
    if-ge v6, v9, :cond_b

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v12, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v12, :cond_f

    move v5, v4

    :goto_7
    if-ge v5, v10, :cond_f

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aps/bd;

    iget-object v1, v1, Lcom/aps/bd;->a:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v1, v2, 0x1

    :goto_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_6

    :cond_a
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_7

    :cond_b
    shl-int/lit8 v1, v2, 0x1

    int-to-float v1, v1

    mul-float v2, v11, v8

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    move v1, v3

    goto :goto_5

    :cond_c
    move v1, v4

    goto :goto_5

    :cond_d
    move v1, v4

    goto/16 :goto_1

    :cond_e
    move v4, v1

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto :goto_8

    :cond_10
    move-object v2, v0

    goto/16 :goto_2

    :cond_11
    move-object v2, v0

    move v1, v4

    goto/16 :goto_2

    :cond_12
    move-object v2, v0

    move v1, v4

    goto/16 :goto_2
.end method
