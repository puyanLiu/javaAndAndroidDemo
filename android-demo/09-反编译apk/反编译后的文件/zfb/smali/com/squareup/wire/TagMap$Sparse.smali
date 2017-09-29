.class final Lcom/squareup/wire/TagMap$Sparse;
.super Lcom/squareup/wire/TagMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/TagMap",
        "<TT;>;"
    }
.end annotation


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/wire/TagMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/squareup/wire/TagMap$Sparse;->map:Ljava/util/Map;

    return-void
.end method

.method public static sparseTagMapOf(Ljava/util/Map;)Lcom/squareup/wire/TagMap$Sparse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;)",
            "Lcom/squareup/wire/TagMap$Sparse",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/wire/TagMap$Sparse;

    invoke-direct {v0, p0}, Lcom/squareup/wire/TagMap$Sparse;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final containsKey(I)Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/wire/TagMap$Sparse;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/TagMap$Sparse;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
