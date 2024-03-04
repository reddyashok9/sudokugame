package org.example;

public class SudokuValidator {
    public boolean isValid(int[][] grid, int row, int col, int num) {
        // Check if the number is already in the row, column, or 3x3 box
        for (int i = 0; i < 9; i++) {
            if (grid[row][i] == num || grid[i][col] == num || grid[3 * (row / 3) + i / 3][3 * (col / 3) + i % 3] == num) {
                return false;
            }
        }
        return true;
    }
}

