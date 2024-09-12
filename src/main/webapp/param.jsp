<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Param</title>

    <style>
        .grid line {
            stroke: #ddd;
            stroke-width: 1;
        }
        .axis line,
        .axis path {
            stroke: black;
            stroke-width: 2;
        }
        .arrow {
            stroke: black;
            stroke-width: 2;
            fill: black;
        }
        .ticks text {
            font-size: 12px;
        }

        .coordinate text {
            font-size: 20px;
        }
    </style>
</head>
<body>
<p>a = ${formula.paramA}</p>
<p>b = ${formula.paramB}</p>
<p>c = ${formula.paramC}</p>
<math xmlns="http://www.w3.org/1998/Math/MathML">
    <msqrt>
        <mrow>
            <msup>
                <mi>b</mi>
                <mn>2</mn>
            </msup>
            <mo>-</mo>
            <mn>4</mn>
            <mi>a</mi>
            <mi>c</mi>
        </mrow>
    </msqrt>
    <mi> = ${squareRootFromFormula}</mi>
</math>
<p>x = ${xFromFormula}</p>
<p>y = ${paramY}</p>

<h3>The graphic is available if x, y -> [-7;7]</h3>
<svg width="800" height="800">
    <!-- Сетка -->
    <g class="grid">
        <!-- Вертикальные линии -->
        <line x1="50" y1="50" x2="50" y2="750"/>
        <line x1="100" y1="50" x2="100" y2="750"/>
        <line x1="150" y1="50" x2="150" y2="750"/>
        <line x1="200" y1="50" x2="200" y2="750"/>
        <line x1="250" y1="50" x2="250" y2="750"/>
        <line x1="300" y1="50" x2="300" y2="750"/>
        <line x1="350" y1="50" x2="350" y2="750"/>
        <line x1="400" y1="50" x2="400" y2="750"/>
        <line x1="450" y1="50" x2="450" y2="750"/>
        <line x1="500" y1="50" x2="500" y2="750"/>
        <line x1="550" y1="50" x2="550" y2="750"/>
        <line x1="600" y1="50" x2="600" y2="750"/>
        <line x1="650" y1="50" x2="650" y2="750"/>
        <line x1="700" y1="50" x2="700" y2="750"/>
        <line x1="750" y1="50" x2="750" y2="750"/>

        <!-- Горизонтальные линии -->
        <line x1="50" y1="50" x2="750" y2="50"/>
        <line x1="50" y1="100" x2="750" y2="100"/>
        <line x1="50" y1="150" x2="750" y2="150"/>
        <line x1="50" y1="200" x2="750" y2="200"/>
        <line x1="50" y1="250" x2="750" y2="250"/>
        <line x1="50" y1="300" x2="750" y2="300"/>
        <line x1="50" y1="350" x2="750" y2="350"/>
        <line x1="50" y1="400" x2="750" y2="400"/>
        <line x1="50" y1="450" x2="750" y2="450"/>
        <line x1="50" y1="500" x2="750" y2="500"/>
        <line x1="50" y1="550" x2="750" y2="550"/>
        <line x1="50" y1="600" x2="750" y2="600"/>
        <line x1="50" y1="650" x2="750" y2="650"/>
        <line x1="50" y1="700" x2="750" y2="700"/>
        <line x1="50" y1="750" x2="750" y2="750"/>
    </g>

    <!-- Оси -->
    <g class="axis">
        <!-- X-ось -->
        <line x1="50" y1="400" x2="750" y2="400"/>
        <polygon points="750,400 740,395 740,405" class="arrow"/>
        <!-- Y-ось -->
        <line x1="400" y1="50" x2="400" y2="750"/>
        <polygon points="400,50 395,60 405,60" class="arrow"/>

        <!-- X-axis ticks -->
        <line x1="100" y1="395" x2="100" y2="405" />
        <line x1="150" y1="395" x2="150" y2="405" />
        <line x1="200" y1="395" x2="200" y2="405" />
        <line x1="250" y1="395" x2="250" y2="405" />
        <line x1="300" y1="395" x2="300" y2="405" />
        <line x1="350" y1="395" x2="350" y2="405" />
        <line x1="450" y1="395" x2="450" y2="405" />
        <line x1="500" y1="395" x2="500" y2="405" />
        <line x1="550" y1="395" x2="550" y2="405" />
        <line x1="600" y1="395" x2="600" y2="405" />
        <line x1="650" y1="395" x2="650" y2="405" />
        <line x1="700" y1="395" x2="700" y2="405" />

        <!-- Y-axis ticks -->
        <line x1="395" y1="100" x2="405" y2="100" />
        <line x1="395" y1="150" x2="405" y2="150" />
        <line x1="395" y1="200" x2="405" y2="200" />
        <line x1="395" y1="250" x2="405" y2="250" />
        <line x1="395" y1="300" x2="405" y2="300" />
        <line x1="395" y1="350" x2="405" y2="350" />
        <line x1="395" y1="450" x2="405" y2="450" />
        <line x1="395" y1="500" x2="405" y2="500" />
        <line x1="395" y1="550" x2="405" y2="550" />
        <line x1="395" y1="600" x2="405" y2="600" />
        <line x1="395" y1="650" x2="405" y2="650" />
        <line x1="395" y1="700" x2="405" y2="700" />
    </g>

    <!-- Метки -->
    <g class="ticks">
        <!-- Метки X-оси -->
        <text x="100" y="435" text-anchor="middle">-6</text>
        <text x="150" y="435" text-anchor="middle">-5</text>
        <text x="200" y="435" text-anchor="middle">-4</text>
        <text x="250" y="435" text-anchor="middle">-3</text>
        <text x="300" y="435" text-anchor="middle">-2</text>
        <text x="350" y="435" text-anchor="middle">-1</text>
        <!--        <text x="400" y="435" text-anchor="middle">0</text>-->
        <text x="450" y="435" text-anchor="middle">1</text>
        <text x="500" y="435" text-anchor="middle">2</text>
        <text x="550" y="435" text-anchor="middle">3</text>
        <text x="600" y="435" text-anchor="middle">4</text>
        <text x="650" y="435" text-anchor="middle">5</text>
        <text x="700" y="435" text-anchor="middle">6</text>

        <!-- Метки Y-оси -->
        <text x="435" y="700" text-anchor="end">-6</text>
        <text x="435" y="650" text-anchor="end">-5</text>
        <text x="435" y="600" text-anchor="end">-4</text>
        <text x="435" y="550" text-anchor="end">-3</text>
        <text x="435" y="500" text-anchor="end">-2</text>
        <text x="435" y="450" text-anchor="end">-1</text>
        <text x="415" y="385" text-anchor="end">0</text>
        <text x="435" y="350" text-anchor="end">1</text>
        <text x="435" y="300" text-anchor="end">2</text>
        <text x="435" y="250" text-anchor="end">3</text>
        <text x="435" y="200" text-anchor="end">4</text>
        <text x="435" y="150" text-anchor="end">5</text>
        <text x="435" y="100" text-anchor="end">6</text>
    </g>

    <!-- Точка -->
    <g class="coordinate">
        <circle cx="${x_for_coordinate}" cy="${y_for_coordinate}" r="5" fill="red"/> <!-- Координаты (3, 2) -->
        <text x="${x_for_coordinate_text}" y="${y_for_coordinate_text}" text-anchor="middle">A(${xFromFormula}, ${paramY})</text>
    </g>

</svg>
</body>
</html>
