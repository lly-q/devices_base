.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field mEndId:I

.field mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 2
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "client"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 68
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 1
    .param p2, "clientRange"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 79
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .locals 2
    .param p2, "intRange"    # Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .param p3, "numElements"    # I

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 96
    iget p1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    iput p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 98
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge p1, p3, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 101
    .end local p1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 6
    .param p1, "range"    # Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    .local v0, "len":I
    const/4 v1, -0x1

    .line 115
    .local v1, "insert":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 117
    .local v3, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-gt v4, v5, :cond_2

    .line 119
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v5, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-le v4, v5, :cond_0

    .line 123
    add-int/lit8 v1, v2, 0x1

    .line 124
    if-ge v1, v0, :cond_3

    .line 127
    goto :goto_1

    .line 131
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    :cond_1
    return-void

    .line 115
    .end local v3    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    if-ge v1, v0, :cond_4

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    return-void

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method
