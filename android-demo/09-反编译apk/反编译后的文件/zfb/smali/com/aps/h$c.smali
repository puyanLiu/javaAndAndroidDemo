.class public final Lcom/aps/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/aps/h;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/aps/h;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/aps/h$c;->a:Lcom/aps/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aps/h$c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/aps/h$c;->c:J

    iput-object p5, p0, Lcom/aps/h$c;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/aps/h$c;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/h;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/aps/i;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/aps/h$c;-><init>(Lcom/aps/h;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/aps/h$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-object v1, p0, Lcom/aps/h$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/aps/u;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
